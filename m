Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000296134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647113785;
	h=To:Subject:From:Message-Id:Date;
	bh=p/+oEdc2LZ14PBTauunk3Ag4LwxY24SpTnK+6YtMahs=;
	b=JW36Z09pwfuMhgkk9ucXzEF9GGLgk5Ks76GOZM6dpEFDUhC7uLcrA98oKbhJ0tw+
	G2E0CF3NrvceyMpRDhDCDz5tFJpjSx2+dG8AtvQAVVD+0ENr/E3qvY7gO8BWrPame/w
	oUlWEiuKNgCb6C39DO65tChwBBJi2S7Cg4QNMs8E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647113785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p/+oEdc2LZ14PBTauunk3Ag4LwxY24SpTnK+6YtMahs=;
	b=fWdAl0RcnVXaewKHz9GdOKXy/98++ctoe6deZnhLgtuAviK18rz/0z65KjuRoLqk
	FFbGfmoidBY/0TErFEcIufZQOwMsVG36GeU/Ekykl+jFqU7xKSOOou+H3W8MEHZfH10
	jFAWQlB2afHN+toncXqKy+DokM8gkYBmtpf1yJaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7fa1cdc4-4e07a723-0d85-42d1-a78f-184f4e2a38dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79ce33195cffef950e7cd076402cef873364da8dac1fbb1af120b58cf602cd47
Date: Sat, 12 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647113784
