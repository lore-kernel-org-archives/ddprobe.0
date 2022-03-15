Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DE92912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647377484;
	h=To:Subject:From:Message-Id:Date;
	bh=tvNXCarTIcz8Ngl6UhSmNhPE7UyM8sMuMmFF+NEU4M4=;
	b=TafR7srGyzUKm84eRXBK1Pz6bRwbNsqtMIGkxkpecJ0waE4WyoirYXT7hirzruIA
	o1Qx1Wt6G8zBCyiPTNn3BYXzMviNP8JAG2bZtJ5XQMm4hqP7c9eUZr+DNZRpamlBGZU
	EJvoU+dpuiT369u3fBjneJqr9MZt58NTuXKaMOl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647377484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tvNXCarTIcz8Ngl6UhSmNhPE7UyM8sMuMmFF+NEU4M4=;
	b=jCnLvElxPrPhxe4nDSEycg9s/gQML+6rvtLPAnMFNbxNzlDY9I4bzsd1FHFGKXR9
	LTfp2QN4nZvsoxDun9GMj0438WAPNc0NKwiXJu5Sc9jXcotXBEJ246mDXGiHfYjicpM
	3ssuRJzSHHkLUqsvVB3C/KcA3KAXAg1mnaM5QfhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f598bbb-15824fad-62a2-4b70-8e05-53f6ceb5f2b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bb6b049b9a3585f078d9df3546f0219da7c75c1c8cb37efa81cf39e0fa7edad
Date: Tue, 15 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647377484
