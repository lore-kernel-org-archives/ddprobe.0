Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC767B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647726685;
	h=To:Subject:From:Message-Id:Date;
	bh=jHBfZMtACy/DgmKlNrV0p9FwtBtqNIhCWmDnZ/+glE8=;
	b=MpNDz0pmuDX4Zpybd3M0mX3r8igzjfJaZtnAi7NUR3P45Ccq06dwQz39ymyh+I86
	TOyhP/5bZr5oW9OvOvF60E6Ed6u4GGMmPbTj/i2RIlxVqvoaSobYHYbdUWGksVZoUm8
	1rZl317qFFTArgL9pWxZcErGnvnZSynJ/MNSW6Zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647726685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jHBfZMtACy/DgmKlNrV0p9FwtBtqNIhCWmDnZ/+glE8=;
	b=fuPN+GR5uEw9bZWSzcrIbVma+LBci4lpxNwitX/vgrps4AdpC/kW8Mh14RF6jTsW
	3cXjO0GeMinQ5vfHgRpnAbQOuJZhokcVVM4e1eyEQxVY3NPhWs6wXE/RL3aVbKkfBlx
	ZRYbJGAITGooSB3wyqb09/2a17RWrGBQ0XsyPDHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa429ea3a-d0fa24a1-7ca8-49ec-9a9b-ac597333d5b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a087572e6b72179da9eb397c99634e55cd6e3da239a287c2f17f6340343d4b6c
Date: Sat, 19 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647726684
