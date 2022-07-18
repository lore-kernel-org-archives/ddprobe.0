Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FCEA42
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658128612;
	h=To:Subject:From:Message-Id:Date;
	bh=DFAPUMGe2Jk60B2IPu6bkuaT8VZfUec4tdQafTnP/qI=;
	b=GA8FdZFVF73F5ljUtqVjT81rKKe39Skr78MwIcXZSHz82WRbqVCMU0To0lOL6dpC
	na++53N2afR84xXgy8Wg3TlqnTamspWqK217FY62SeTt5znYh8JHDvFR2ObAH13TumW
	9skcDt1GXYVu1qqDs5ouATV/r8vKnf5eH2m2OR34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658128612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFAPUMGe2Jk60B2IPu6bkuaT8VZfUec4tdQafTnP/qI=;
	b=i+dK9XhqJaK/l00Ss4KQLaPw4GR0YY/7xsBYT854Jux9VQn8hNn6Mkej0bHtfZOn
	Nn3wlOTvDtgCBkm9xaWvK7r9HT5JHtNQJUfZjqf0kCK1JdDN0RJWelwbJRXtyoBAzLU
	KeNpCyY+6HfcMuDHO0q8TfF/fUBSKVm3OonfZXG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182102abba6-ac9142ee-db71-4156-9634-7c362edbc732-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b4e66c133017f8a28f43ba6bd48f3a522ab2086307dcd934678025e8845ece5
Date: Mon, 18 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658128612
