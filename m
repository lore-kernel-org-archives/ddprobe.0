Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181747C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659815452;
	h=To:Subject:From:Message-Id:Date;
	bh=JKC9BmZFbu9P5Wg1n8O2dAG6twouWNXM3nvCEbhjb1Q=;
	b=KRDCfhFtjEAsBRk7ncxCYwkEYpc+sUJIaJXZO57fFdwfxV3s6wRM/6y2w9HIGIGL
	gdUBxocDFt6ivqzQBYrFCnHqsjji4NusxWkJ+ikJ9E+ijzCwzqceyAFfl5oBhgdYqFx
	kum3kASgwpKDUAO9/LsZhBM3JNoj+YQ2NGJeXDA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659815452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JKC9BmZFbu9P5Wg1n8O2dAG6twouWNXM3nvCEbhjb1Q=;
	b=B8zMzdaplAghTQBcQKMAfgJ/qUnP+GULK6Sl2uyQk3QdnIx7WnIAyOJYgnyHByMY
	XQuyIsJp5k4VYhcGorcaM0jnufNIFelHFns4EoyY02uqZQNMU6KzpK2gRAtNRjqC1y1
	yiqkm/G0ZRgPjhO2SMt4XBfjQVEx7NUHb5LXCMxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274b5dfb2-8edfba6d-0d18-46f9-ac4f-ba78ce14ae9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34ac4323ea8b0a26ef22351e064d62ce90987c2e51d5f7c6a3da70fd4f423f56
Date: Sat, 6 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659815452
