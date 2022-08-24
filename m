Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7F4186F
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661360452;
	h=To:Subject:From:Message-Id:Date;
	bh=605VRCWnEyu4pbPbCW2biXAhTwajSZ3Qc+mo7L7Jz/Q=;
	b=hpqb8E1gDdGxFkrRFO3GBAobs5jw9YXhw8/x7o4wpeVTYG1ukmHAktf4kJbdZNMX
	7lYg1Chz+iUNFIYCxRUjuGEGBu8+LfNWquUprLiu7qNS5IasOQjxrvJPz5EpfhFuyCv
	9pTf2hs/52YK7jtVuc/TPvtf15dAnKgemTx0k//8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661360452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=605VRCWnEyu4pbPbCW2biXAhTwajSZ3Qc+mo7L7Jz/Q=;
	b=iXmrcQRN+AIweMP3xDH1avUPYfVopJA7k0aqyQU+xFz9ri4LS5WYbUZvg8tf+YFs
	FsplnRjMVXxO5SBdgLiwCAa6h9SIl1lKgTwriDkI7t0Bw4oPhOXhDlysTcILsbAoZpR
	atasFVcS3+U/4cshHIxcGcCJVIQYaUKw4Uxc1OTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0ccb416-cab330d3-6dc2-4bc4-ae22-498ba7e2f712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69be6729187c2a982c87c82d87cc778a26511f9483981a95afe43c89d9cdd2d7
Date: Wed, 24 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661360452
