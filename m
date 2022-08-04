Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5A42585
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659625852;
	h=To:Subject:From:Message-Id:Date;
	bh=NIjLsTFZ4Gn3jUayRAt+G/mXwinVMkzUnmkzCQzlBHk=;
	b=fEdF/2FsKURcHlpl8b3yJK3Uj5FLksuN5UbZWukdTV5euoyOGGQrqxtJUEIcj11h
	JPgq8f7CruV98mhLFwpMgMsOQpphDhrBwmt3OVScJmtNimGZBaa28slgtvtW8Sc77+S
	RZhuHR4KO2FMGdaIy1JmcTxweObJ492BcCrtK8lY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659625852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIjLsTFZ4Gn3jUayRAt+G/mXwinVMkzUnmkzCQzlBHk=;
	b=Q9zc7zO62pUGomJuvsbNJKUznHGq2pOB2le2H8Sb1jc2++7P8cv+l2FplCJn/58h
	QGQjbs99R+3IR0u7ABbe3JRbRIpE8pdYY/mtIbJi6Vf7SwPANSXLACZ0bMCIWncUDNB
	gDKKAJ36ARQ1NC7yK5YmDiQC5duoO36w6a6Vt7c0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826968ceb3-a8621e8d-6744-494c-bc01-6bbf6f65de94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9372bf9be1307d40b5e09267060f76528bee0f5ec4264a061b373d94914dc263
Date: Thu, 4 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659625852
