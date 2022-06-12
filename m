Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ADF7FC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 06:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655015699;
	h=To:Subject:From:Message-Id:Date;
	bh=lCTDa6r8HZiKDobMLOE4zf3KtLShnHQfAUSqWXy1pGY=;
	b=BUoPY8l/q2wD1WLYfzyRp5o7t8d7ZlKhr3izESK+7DH6HE+MzCl4/SH3DxXAU+YA
	6cBmpcO6RhgqOKyRiHoXbjVPciiL0Zp/62cAtqyQSBLyhT/6esRiVj3TFD3ynpi5BCA
	fAsRDWipUxmIwjkP7I4qabSgKmEHMVZltQUOH9tQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655015699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lCTDa6r8HZiKDobMLOE4zf3KtLShnHQfAUSqWXy1pGY=;
	b=ViL5E4MA1y/N+87aap2RYKmBTc6bWC+85kGZVdnRbnql28+6Z3WfN/scau+Woy7Q
	7k5RScazwloGvQV7S+Ycj77gcwgr5u8VMy1HgTsyJtfhHp+ZIftutyQNNVndtls1zzJ
	CYfBP0lLJzzGXexLuMaDp7xZWXGj7pRiy+cQhMTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181569f7344-c7e31993-3ca9-4e51-8122-0c68710ab86d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db277016065d7d79eade6a6ceb3ad5459774e978d567562e49b5771ce53da365
Date: Sun, 12 Jun 2022 06:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655015699
