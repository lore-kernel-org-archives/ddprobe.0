Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C1F7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659492652;
	h=To:Subject:From:Message-Id:Date;
	bh=mhOd5Si4/wv6hirNmH3iBAAUN6uo9gmAovdLWGy/myc=;
	b=HNe3dkW9NxDu6KVPQg3/pUOGrXEOZWxFtP1fnt2h0/O74h88efnzqx8+Wku0IuCZ
	ZKN9HDQy4xr4IWKYkmD7C3tA5geYJYSCQ/gwJstMtb2v0CSUiAeeDP135vXMoPuHKFx
	ZHKzXqwOGipzvZExIzInzCxmiyjVyJJPdugGElLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659492652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mhOd5Si4/wv6hirNmH3iBAAUN6uo9gmAovdLWGy/myc=;
	b=Xs79pm/LlLE+89G8poOmHLwKJxgwizyPlQq+G9S7IwgBVIPjKQQ7s9oY4UJrcX7H
	/KeYZebKnnyrS6Fwd05VRPAIP2qpaCZIqgAbMorWcDJQi2ZrQiv86UP+2H5dUmfkWYm
	etjGjF0pfvmeqtexVfYOJqlDDZWpyWCzAdNoYN/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261785611-5a2febbc-7189-420d-93ac-bef751feecbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f34caa94cbfd72a36989f9928a1dcda0b3260001afec5000dd1e56f80cbc8462
Date: Wed, 3 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659492652
