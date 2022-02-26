Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE52238EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645869685;
	h=To:Subject:From:Message-Id:Date;
	bh=i1KItKD4JqXZulOpa8vDxiZX6kmQAUxjnpPEJjJZBlY=;
	b=RLijGrrLYOr3KDp55JK8u6NuPUcmsoD+8lLPbY9SzNvG1pCURbM88xyKIYIZud+S
	NPXTiw9aYiObiak2Hs0eZEbnWssZKvbvJWIYkNwUI5vV1NakVc9OrN7V+wXy2E7pJ/m
	SSkUieAzPEtmYOX/89JxOIVHbX5NsYAuqhlra3O0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645869685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i1KItKD4JqXZulOpa8vDxiZX6kmQAUxjnpPEJjJZBlY=;
	b=S3AZN9+DBVGojPJwBWKnQnDx6lv+essk2hTX7wlLYzj8JBSbPUKs+0VBzX3d+W40
	1KEtamFVnFvv3dxLeaGjAdTm70MjshCmU1kxrWJM6rf3BK8UjsoOZBbDBwcn3OQ1JtA
	YXE62Ailwjrx3M4sXWNA8qu0W9H0SqpcZko+ob8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f357a5825-e099e7b3-8bf6-4a50-90ef-295ccdee2c9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ae991cc16733c0f884b8d211b9055ce5aca8cf6f49f220d2d406f5bd1882ef0
Date: Sat, 26 Feb 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645869684
