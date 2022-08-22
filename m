Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6C07F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661154052;
	h=To:Subject:From:Message-Id:Date;
	bh=tnuW7AZ4Eal9I6AM/DnhYzL6hWG96Gfjfxvmina/Efg=;
	b=Nt0dOYX32L3ulSIGb4VqW+RSCm5SatpuXQC4XmKvNkJqnrQwLKg+rBL1fpXlEwzT
	4Ul0DTiNM/UxoH9Oa2cjFFP4gSzPrEL/4oJAr4+0TJTjee49tl6Bd8diosU+Ep6dsAJ
	DIEDbmAURGjfX0TkbB2y0Nk15uQeCpGtcLSAWEpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661154052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tnuW7AZ4Eal9I6AM/DnhYzL6hWG96Gfjfxvmina/Efg=;
	b=LV+nfZvecBWWDQCoHosFBQFraMYge5I+6NDAivMw3Z3Znh0b7DmqGjGiigi1qyMu
	GmjcGxW8S84offuLYQMt7/I3M5sjkxLFUwyjUCtmG6fpx26Akh4V79OG5mdwD+7kB1R
	WGWggEd8Y9CfuUp1HOqmmPTL1MBj1mRk+o/2HRkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c47f49c5-4e6de757-c9f8-419a-8db7-e6659d43c265-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6404439c808e269354b98c58cde3f837e86945abeb15ecd957cd0b9a56e3583
Date: Mon, 22 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661154052
