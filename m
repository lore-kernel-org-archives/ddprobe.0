Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CA17A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658991052;
	h=To:Subject:From:Message-Id:Date;
	bh=br1SR3dc7xIAvwYrcnbOfj00N91pt7objb7ch+Tk2f8=;
	b=QwGr7pMRjaLs8ccRTRk5Ftas4A6r7qKOnF/WfWdkgjn6xLs5K1iTsJtr218lXJYf
	L0rgv8pDcNq7Fs/2nzWEBj5AFKSjZ3KhGUNB8CImZvl6Hi+EKNCD+obadHfvD9PK7C5
	dB7zfDmpR1MEHCAfmWxdBtkrsLwEY3ev3i7MJ8KM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658991052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=br1SR3dc7xIAvwYrcnbOfj00N91pt7objb7ch+Tk2f8=;
	b=h424Q1mo/RIndUOd2fc1JOsehtKhsnfcNE5gCQwRsEP9Stvmr7ibxiAw9yurK0Nk
	uA5FTJXcASEnEGBZgYtwjRGP63dvtH56PkrKJdrhfcKcRh3QF7zUkO+PB+jGoCgYUA3
	mKd80mlEOWnHsxQR5RlGPuNjU6JMYXfP62NryogE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243928716-8b9a1c9f-c29a-4212-baaf-fdd97cca3ab2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6f7ca5699dcabd896e05d9e615eaad8769343c42bbb49df8f291c7a64152f4e
Date: Thu, 28 Jul 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658991052
