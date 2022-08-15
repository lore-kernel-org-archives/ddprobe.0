Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B98510F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660542052;
	h=To:Subject:From:Message-Id:Date;
	bh=RFewUYpLEBHiu4K8HBXnxw5bfHcMC/12l0rthOdKeR4=;
	b=hmBD5IzC5oYLgbQmWC3Y/43O8dmztd92FDiFIwGfLJoXkiw7LNCpqQZPf4VzIj+6
	BEi6jr/w/XJpjo/YWYpB5Zbsds5txC2/eXtDq2NemGO9o3iwOrDfaVkmP5sWvXJ+js4
	JHyhuwdytWDUMjnrCzi2Javuem3rb71QomDuGobE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660542052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RFewUYpLEBHiu4K8HBXnxw5bfHcMC/12l0rthOdKeR4=;
	b=YM9atQWSKpOV7g+lKH+5nJAo8OrYAmE/LBrqEOa8xEUwdDhKnbkMD5MGzHIOaNqW
	G3rx+h+xcrHTs8u4W4+uBDQYwO+S/zQD9uNtXgAMJurm/XFCPnn/BVHaT8wX3wmjSL7
	/LBZi/jVBPPVmt9dE2L5TzVAc1aV5pPgsyHrcRaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a004e90d-dc296d7b-4062-42b0-b294-c821d2491711-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e431bb7f7b748d40b8684e52bdaa77c7ca42fd73da477248fdcf9c8f47b4b7b8
Date: Mon, 15 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660542052
