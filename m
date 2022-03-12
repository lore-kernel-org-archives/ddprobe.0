Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873267E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647069684;
	h=To:Subject:From:Message-Id:Date;
	bh=G2uMFn1Fghk86pITBatxWPP/UcnjI3y1OcMRCl0YXVM=;
	b=goxFXo3sphd+u4+abLFgWEge9BlKuxHehcNWL5ep2gOdDhz4uUAbQOh20L9WVOXs
	cM6vFYnFrSo0OHXIYVm/p4dxEiSAaRjyERlx9EmxJQfMItdNYPMWfPRFVziRXNy4Wfe
	GXGpCLa5+sgieN3aNgEIaEc+Mow0o4KslMI7SnkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647069684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G2uMFn1Fghk86pITBatxWPP/UcnjI3y1OcMRCl0YXVM=;
	b=EbQ4vBO3kn3xUxlzmU5RDxqsq1u8lEkSc1pFzKr3L2/LYDdMtF3b6b+QML9cWZiD
	yxVGhKaLdzgyOIF+15siOZV7k8bPYpKrp0k+E2/U2JGczQe/0SpYrAheOCijcK9r7XZ
	fO2MPApbbfXKv/z8Uh3R54lgbdPuxDJzAOsKfh40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d00e3f7-9f9c17cc-bd55-4f0c-9f1b-7af0269978ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6694b1530fc33c25721aaef6b2e03e98fdcdc336251e7b9905170ffc33ab2976
Date: Sat, 12 Mar 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647069684
