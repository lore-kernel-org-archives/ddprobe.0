Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49E3236
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 19:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653333239;
	h=To:Subject:From:Message-Id:Date;
	bh=JffvovFtGBMOzxBwTlSf0lw02U42a5d5uwlW9TFjr74=;
	b=THAfibc1jx5V0mlU5ciL8vRZ+FBHj+EP4Fzmz/Qj2JKZ2vLy5nnVHddFn2mjfsam
	nB7YAPxno4coPZNpkc42wrF33E0Ci8TC8pRaEOLllLSmARBmK7f31bMuXJ61YmqvIVc
	BBcXU0WlKtmzXkr2/6UdUBSxlWtF5GIa8zutaqVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653333239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JffvovFtGBMOzxBwTlSf0lw02U42a5d5uwlW9TFjr74=;
	b=MNHtunZyDNYwEB8YkRyh4Vn46sSxBi6AP7/c4nqn896C90oxd3MKQ5htNvypF9+v
	LYfXPAt6rLkbLeWq20H1HPIC/a540ucaNth/PlPbM3YZK2IIab5/97zd1tkc+OSuM55
	m9aZifIk+xfJoOTJo90APXNCzOQNUa6QnVJEPJko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2572600-68ecedfc-b40b-4341-8c10-30555fab0124-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c34a1b4cb3fb3f90f322d70e2fc107062e21b014c86e6e0f9ea55591906480a
Date: Mon, 23 May 2022 19:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653333239
