Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F4B7A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657620412;
	h=To:Subject:From:Message-Id:Date;
	bh=w02Eyzudznr4nsBS8CCHAdt39YbpZLFeqEbd4YayghM=;
	b=j5BEnKPp1BjQAhHn0vckkJLS7ScswjRrgLj6fAGp2SS4ygfOLrozImnOcjDX664h
	aq0l2WYEBsOq7s1XscpMI2U0kiHnfd49EOEL08vbg4sZueUe6a3iRxSLsTOgCZ66ExV
	/qBpCvOtjEkjI7NDfpjr7324EyVN8BrZ3PZzL6AE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657620412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w02Eyzudznr4nsBS8CCHAdt39YbpZLFeqEbd4YayghM=;
	b=Y6tFfNKDT6PakZ6F0+dwM3u8Pkh5PsjNEAo/Py9XlpFucvbgXqD5GpfhUD73jENi
	oZeV26xqPZCtIpS8CC2Ms68uyWRVZ7SBhaA5TKr1RUL4ea1STGIX/Wpvg87o0gUfp18
	N73oGZgO7IzCp0LS3FCKxyoDJI4nndd4w89l+ZCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1e03785-92569f82-249a-47fd-ba65-98cad1dd2435-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d39ed02188cb93f74d41f5075eda3d2e7a38d4f040ab18e53ca3ebf2da169ee
Date: Tue, 12 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657620412
