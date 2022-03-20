Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94AD7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647741685;
	h=To:Subject:From:Message-Id:Date;
	bh=XjfGIvk532T6zZmFAGgGlCQywVEVPtehHMgHcFkTCpw=;
	b=kxdorMVNYoCfX9Hkfjtyn+OA8p9RbWG8WvQdg5li3YaRw/LQbawEOStqnggDF+LG
	/OMi0TyLBtiVFleiyOrVdpUexnYpVjQF80HZx+81/JI3GSmOj2wI91uW7yCDfDrDW8s
	67Jj0OIMOzjw+FZU+LpCCPhTY9QGf3hmo3rrj5mE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647741685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XjfGIvk532T6zZmFAGgGlCQywVEVPtehHMgHcFkTCpw=;
	b=giKWlrRu3vq33Ja8Lbi3w/HwuADcdqs327XLx58qdl0wPiePVkpw93lLt/DZjz16
	t91uuWC2hUot0FVmFyuyyBWpfDyIHlJykSSWqpHJEpGh9M3v2t4R7OCysis59POUfTr
	1zgwX8KoUlNS+4a6LxUhEb1HoPDKSpd7KpSOOS/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa50ecc18-e0e8a154-650c-41ba-b278-48cc51ef2814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30bb61625e48a0b7e0b40093ce12690c32e8ce4c43265ea74aebd11afc9652d4
Date: Sun, 20 Mar 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647741684
