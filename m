Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA981108
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657440413;
	h=To:Subject:From:Message-Id:Date;
	bh=8gWIS5iACmcEzO+mexox1oG/AEdveMODQmOeIE8sAOY=;
	b=Kc2hdG2rQh0IkwYclumGnG8rETdfI72W4LK77Z1sxUYMnTVungflWRfDonHM76aH
	VxLqA3Zax+osiRWvyUHP5YADNDX1gmFWXHgSh3RrcU2/fYLNz+YHDvI9rKKiNESvfTE
	nBygfzjW06HLviRDcK2nQkN56aO0WRoAE1VlUOM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657440413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8gWIS5iACmcEzO+mexox1oG/AEdveMODQmOeIE8sAOY=;
	b=CkKgScMxr6KVIFa7DcehxOn2PSRBpAIRZI2kSCY8StXJUTSgc5FXg3UklnAxB32j
	cWjlLUqUVqynwewa4P71mv0yLraiJNv9+zpDAVrR+iTHDGv19wnICwYrE3NZdM2IgNR
	PgkIJ5WJkBIXrkHr7sG3AN6C9NqAmIUS6c1CmeTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e725a287-1744e86c-6096-4074-a170-24a85c9e65ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecf9825e4060622964d95be48c61abd05f2fafb4abd9f55624c85033cf279c59
Date: Sun, 10 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657440412
