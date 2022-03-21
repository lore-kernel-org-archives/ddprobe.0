Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974C336F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647829884;
	h=To:Subject:From:Message-Id:Date;
	bh=OUVSxMGJ8eRwuDFfCAZUxtnP2kYmtijGmYFyrAblUc0=;
	b=fFBn9PKBxOFCpDEk27pMRVk6QXApjRP5Sgd+4AXRApfn+nBgGzt60puhyjqqduCp
	/o6Rf/e9UQOlyjGr2RSWA0yZ/6aNOvxCYj+lj+0o+ZZyqidsLv0FYRi9Oe61pa76ps3
	Re6sD+8sj6Ly/YpR3pPnBQH8r0NaHAgAC0OdLg4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647829884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUVSxMGJ8eRwuDFfCAZUxtnP2kYmtijGmYFyrAblUc0=;
	b=SdZEHlPOVPheN3HiZOv7/AQWph7U+VX4yG85Sn/9OcheMmhnnqtlqfJRBJYoAcCa
	lv68hJJ/EkptwQmbhWVuiDFUy47cnqst/vVqQozwoUS5ZE6cCsllgMZ5wsfxf0cIz8e
	qXFKcoKIc9858slicNkfO4vgel0VlSeDqOfebFJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa509f37-0d822efa-b7e5-492a-ad51-7d57603e456c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48960003071aede505a0b688580769608b59c1ffc6343963ed632cbba0a05744
Date: Mon, 21 Mar 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647829884
