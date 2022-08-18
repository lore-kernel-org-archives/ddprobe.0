Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9048C15AE
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660786252;
	h=To:Subject:From:Message-Id:Date;
	bh=RCKwHDrfrNONVOMRxXOE2sf7IBHpG27+miu0uT+1qQA=;
	b=DReKBjn+m+IxpoVMJStSpZVMZ8fPFXNv3U2RlmWzu+ACypr7WSBYxFObHoKSD2js
	1FhOybVdLxBUSC85u0lDkuB3A69iR2ztPub5iqHIKqEsSIqVd/2fNmzR7JLcXiRoKZP
	90zYowM7EBkIH2/SBzmItX7joDPBMAcLWMvVu16c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660786252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RCKwHDrfrNONVOMRxXOE2sf7IBHpG27+miu0uT+1qQA=;
	b=SdliItv6sUUOYoE6q8RYmJqJw8ZaLD5IX8kAs/vplVlsHg5PoZGEV6aywccjVd6W
	7xYXnZQ5jKqkRxIVJJnPF7fChR7hgirTPjaKKMNO1x8t5Mp0qteeVgUMTkMd3dQ7WN+
	vxPmDAl1t6+2XbwUIUmICdS1qTgf9GaYvEvu0iaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ae931b83-e6baa582-3e84-49d1-b10a-33a23f38ab5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1565412c449ff70713266be42f91e25251afe65ca970f293f05fc56eaac1ded6
Date: Thu, 18 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660786252
