Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B761874
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 21:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652821379;
	h=To:Subject:From:Message-Id:Date;
	bh=JxFrP1qbtZhGeWRbfBKDsueXR0J28nBp419ZbnBHA5k=;
	b=LuIhv1N2OP+kGYG255j2ahnWt4o3IOEYoc6c86bVMy9qiXfcgfGHS2qTuRIOlrtD
	nkrk1mtZ06rxNayanW64DvLqqbA1FHRmp6J0KQm9feSal9eK6nvIivBgJTPtv5XufEA
	iRjHOHFWftS5PttFmZpzmYN5Iktp6rapuLer1CKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652821379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JxFrP1qbtZhGeWRbfBKDsueXR0J28nBp419ZbnBHA5k=;
	b=Qoog4I4H1FNfIe0YIXPzjKbw5TC+0l+k05vmPVgrTar2Ba2QfAPBu/C638EnTMFU
	CUw4VaccVjeEXgfXaU1DlGO6xUyos4cG3wAN6UGkrARXEXGzO8WisNbVM0GBGvhw7Il
	tFX4J10oazSA3YkPkIEQTC2V/Zd9x2VOXRR/JbfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3d4c900-cf1151a7-0696-449c-975c-dc5620ed9d5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5650b621db6d58bfd78b2baa0e91e0bf314a40a84e56c9bde38b2b79f697833c
Date: Tue, 17 May 2022 21:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652821379
