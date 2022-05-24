Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE34629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653359219;
	h=To:Subject:From:Message-Id:Date;
	bh=DhfRyaWU6KBw1kAbV995JCfCgVxvHkrWSpsPFMxnISY=;
	b=ZiivY7uShd23x1ZxthhrB+eTOF9FTQD/MPTWuzZgaDymK9arEYH6rIsMvqAe5Psq
	C9/RUafHd6fB6Qg9fzrgSNy/a7CpWqyy3iELjmFlWzDRkPjIm+cGXIS+5AD8CKhm3yn
	W1gEKeEgqNChVe7wU4abxe865v48ATJDlgLUuSTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653359219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DhfRyaWU6KBw1kAbV995JCfCgVxvHkrWSpsPFMxnISY=;
	b=gwiSdlqfHq+C4V6ZlpkFcuIx8QthC8xSZP4Qcrjl27hI+4JsPgkvy5AgpWlI6bfC
	0DXxF8sq+rin+H2ctZeFyjLRfWtvuJ32TeOLWTrQbrI1eEDHASb8RyclhDg/tndJtZE
	G4rBLWDkMCxuAshY56Muwb/0V64bCRvoko7gMs7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3e39249-77895240-3004-421d-a1ef-a0f7f92202ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1dd8fa49124679708401f2df2984eed6bd88da6a6f2fd627b1d76537df925b0
Date: Tue, 24 May 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653359219
