Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F0A7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 17:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650042478;
	h=To:Subject:From:Message-Id:Date;
	bh=YvCG2X0AT5d1lYaKgP+8BEwpK8uaoaKEgG6szM+j/Co=;
	b=BZxifjWJcyUqyhnfLvaLcp61bXE70So5+9tBVP4qFhUj5MJ9PecQhTOXyCFth0Qu
	pXBBTFklpPI/VRV+T6QjxUgTMAz+BXZ2uoDRi33o4LT2PTLPGtXKp+7SFys58Yt94ZM
	PeWTHIp55692utxSJjXnWkUp8hweBMoG/Hnitncc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650042478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YvCG2X0AT5d1lYaKgP+8BEwpK8uaoaKEgG6szM+j/Co=;
	b=dc7KbD6uvXVZ4p2ltfK5gKbqQo99jvL0eY/wtDyjY01acaHnQS5iAXixuBGNq45B
	jEkWyzHClnX3P8OTit+o1i1Dho0Z3ABRQrE5gnFxBjgEM9zBF3pwJ7gXNMreD5NTXlV
	vOGhQjj6d4pUYMnxw5ASqMIFjCMAQ/+Nesi1ldLQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e321eb0-f7bca5db-f612-4e11-8290-f0688ee0ece1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 059499a1614b02ad9b90a01c6285bb42901f8f1d4c7c0655d237bf353bec4814
Date: Fri, 15 Apr 2022 17:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650042478
