Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501EF7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 23:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649029258;
	h=To:Subject:From:Message-Id:Date;
	bh=MF+CvL5GLClRi+/wnw2reVdMH2VFg+wFpvHfMIjmpkY=;
	b=koOzGHdWLEYBqsDkHiSwdVpp6XquxVCmiCpSssmnvngEKkyZIWAUN68piQ+BEfqE
	3xRvpLZM4F9ayQ6swhcoi1sHvDU1hlOT4VyRR2vxz8gARdlxagT7mkFZxo+TcRJob/M
	8R3JV++MMg4iGTBsZn9n/ixK61chtomyW1xL8C5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649029258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MF+CvL5GLClRi+/wnw2reVdMH2VFg+wFpvHfMIjmpkY=;
	b=ZdE73HzqPbYRIIg6BqkwBBYzExQlOOvXxdjln2VpepV/6InsID9PqWK9NjlHvxmM
	TVE69/8wUzS2kJ4dQFHhMCsE6cOrU+K2zAPrBOJWICbdrx6JzFMUYi7b1AtUAyqeJou
	WVRjwbZ+n/BoM8GzEmUWg2lWIwoz+nyr1qpmjpjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff1cd9c14-ceb95c9e-793b-4340-b9f8-eba9b088b010-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd120df0940f85d252e8d3d03333ed6c0805fdb0e24992903c1c95997dec1af8
Date: Sun, 3 Apr 2022 23:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649029258
