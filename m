Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C01728E3
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 20:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653165239;
	h=To:Subject:From:Message-Id:Date;
	bh=os9WzAYBoqLVfX3gaHolutQyYbjxafxIPJbI8BmSgto=;
	b=TYfm4KKViFE+PH0P5wW9UbdyaiQa4DLduIp8CXgqR3I33n27FTipwzQOHdOA+jfc
	dwRC3hUSRGaN5b92JfT/I/aL7HTjEw6+Bmo9V2Xz4z9sEwJecXwRkiF+vZ64S1WEnVM
	AC/CaVw2ePKR+TzQZvamz6/KODCgeR0cmPfea34w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653165239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=os9WzAYBoqLVfX3gaHolutQyYbjxafxIPJbI8BmSgto=;
	b=Yn/3wUspFxiyuYjkL34o5dl6ZqE3jAJNt0CROh78HwGVjcNYeTvaDgyyUXnD5pbD
	ASFKCqZnTBUTmFBb1B9e1Pg8rSrWxKGXjnbSHwphnYYdFbBK7fMZ1LUwkO55Q0ttsY1
	Ah9gWDnX3gd9CpM6oL3qak8AiOxctdjqHx26UWNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e853ac17-57dd117d-7f00-47b6-aa5b-52b61fb353aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86eb8a23b30032406c5248d52c75d915988e50e923c9c54c10d11d5ef4760dc9
Date: Sat, 21 May 2022 20:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653165239
