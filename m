Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4FF7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 03:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655694119;
	h=To:Subject:From:Message-Id:Date;
	bh=xBOMxxq8KQdhrJxyRjiHiDHL58wQFToi8bnHV8+ggX8=;
	b=VHNI/bediU53Bxlx39aKq0imBQpgTEoyQ48mnKGD2dT9aP6ay0/VqUQ0n1Sn8TK5
	Ngc7IkrLZQy22+nxYXagaNr/lDrOoQVsT7WT5ch3NhLNGyFqO9GSkKpUBMmGj9Ahh5j
	GcDMsRloU+0JkIGJKTht3cOnWLLaJR/k30L+bZxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655694119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xBOMxxq8KQdhrJxyRjiHiDHL58wQFToi8bnHV8+ggX8=;
	b=KwQ4HYKeU33fOO+sgL6DjDrBqXlW8eXHq0AAyy439BXoXSmJBVSf92HIWwT37KWN
	h+4euu67WwbV8bUDjmSZO0cChRt2AONIWzEXOuImN7I7bMFFWWlRB5dn3zSWeyXyvQc
	R0+InTi8DgxfGajMg6a7RAtVq8fSFrnUYVm6CNgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f0f5142-061815a8-79cb-4743-997f-c213571ebfb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 419673a2d93721654f08586ced67afaed7e85e9955a0c0ce823fc874f458781b
Date: Mon, 20 Jun 2022 03:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655694119
