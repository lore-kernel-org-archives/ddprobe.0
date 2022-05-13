Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D25117E7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 00:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652402279;
	h=To:Subject:From:Message-Id:Date;
	bh=JtqVHgE4KVXc7EuqU8ZmvgDxhnu5pIVrPYcHO75Y2Y8=;
	b=EEzvVVeYeyr2psevJSVkIYrYo58i6JXTsZ2DLizBdnu0Od609v7t3tAl2KqDLAWN
	UCbWgrKO6E9bwpmlPtGxsqa0qEuE9aDqozV2bymvLqAH4zuW4MPJ1KEEwtDDckST9sd
	E5jNyULhZqKydi/bmeYrBYnE9+An8t+qyHctuGV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652402279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JtqVHgE4KVXc7EuqU8ZmvgDxhnu5pIVrPYcHO75Y2Y8=;
	b=cicctYkWd6zlbzrsdqFE+gm5BUDpxuK2ursLYIwblmWnlNWQUlOKoFfE3mHrl02I
	8I788xAKdAIbKyJnQof5+XZ8RFiWnHLFgd2MquUr6s1njExaBRuAhEufPLXEjsqFUXg
	vxb1uOdsDpw+UEUD9iSf+fVh3Qe4ySyTVOILD6Z8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bad9d375-939b57cd-5e16-4981-9f55-47e25008a9e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 266119138d9f407670d9ae4165a3d29c1580caf64450d8fa4573ad5860c16796
Date: Fri, 13 May 2022 00:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652402279
