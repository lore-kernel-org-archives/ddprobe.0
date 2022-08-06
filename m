Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ECF1107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659771052;
	h=To:Subject:From:Message-Id:Date;
	bh=ECeEAs7GTZ+1WiaX5Lw7TLm6cAJyxeEqgtPT5ufZAic=;
	b=O6Vk0vPuUs954rUFbQUT8xFbJ+ANdcOSnsGDHLghKol5cg59LSwnTRj9Uv6tK1Gj
	zKDyxGB+JSWDhyvFtuaAVPVcOBPHTsbUVA0aY+ahUXbPaYnV7QGeyPGlBFgcdsMN1fs
	hFViY0xiPeiYQklU+xorXZdyTthfv4xAgdfrGI0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659771052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ECeEAs7GTZ+1WiaX5Lw7TLm6cAJyxeEqgtPT5ufZAic=;
	b=iQcqFs3U/H9rp82p80SJqCcCgoSyoqwCnIce+5mu+cHsq7wfRYBM5+E4snGMdZqo
	3Nf9f5NsXyb7mAAChg+1JEaY0EIF2SmnL6Z2QVFNO4o42rK915Q6B1gWUwfL6qeAy4M
	RV8hemKr+Zrq0O8xopuDeRLYb1scsduozEGeo/WE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272106232-d91045ba-de6b-4649-bf75-b5c1a4c14872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fbad0bbd587fd884aa79529085ecaa03e967a2b2b51c5c9ff691cd4dec3a643
Date: Sat, 6 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659771052
