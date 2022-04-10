Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168FB137A
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 17:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649612878;
	h=To:Subject:From:Message-Id:Date;
	bh=170iSHJaLF+xWyiDRz3GMjQQxkM+rmNPQC7w/QszZt8=;
	b=X1Vv30dTauGoINRRPYN1rSOk6RIEwWs57skbUSbCjpseJD7NyGoJmA1PaU8PsxDL
	lnnqMCYJhndSgxwhSgNN0MtycI0UalsXA32rS8v1C5TJzbyPcMXso4L2R+/9qRYtxZq
	nOheiw13erZg75ioh4/P5DOVL8XrqKM9i2EzHwBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649612878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=170iSHJaLF+xWyiDRz3GMjQQxkM+rmNPQC7w/QszZt8=;
	b=Wf/gw+J3WtET8TgB+W1ZHymHxlsypITPC7T5/cRNPCDBPXc6aZvK8DWuvoaCy93/
	xZXslD65k8YeIM6hvhYU673hGu/JzB8LbQaoBb41gcdBQfxJMz61fQ9YswZNZdNK0K6
	0/fQznVjD8VWTyg7vqKKu3lp1Rc2M/4h4QnUzmhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801496f194-bc84dbb8-25e2-4f19-881e-1bcdc3180de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ff1c101626c6667715e8a4613bf8e2f71a414afed28954902a17b7eeb0e6e87
Date: Sun, 10 Apr 2022 17:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649612878
