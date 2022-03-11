Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968997E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647001284;
	h=To:Subject:From:Message-Id:Date;
	bh=7MWeffrEr0inc5xY6tiLla/czd2K7iJCmyVIocF+Z24=;
	b=cyON5U2ObiFvjNawVbLeOowPd2DhUOfVuc+0pOlATatnLGRQ63KhT2HaYOJGSalZ
	/OQavLTXvjKY/z/G5IWU4cSR70S217Ows6NhsniS/PkKY0PJbG0HrtVzhwPghBS/0cu
	nANsXcTy1exPgAj4SHZyPaI6wHpWqkh35bTfn9HE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647001284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7MWeffrEr0inc5xY6tiLla/czd2K7iJCmyVIocF+Z24=;
	b=b56cUVCMMDzNCkoo+QRj+yWmxsKJAfEkJfFjt5lHSnPfWLMnx/0o5k4Msro2MHhD
	5wx2Xiy8zUBa65Caw6IJY+opasA/Oaj15dVil7xiPlIAuoA1mH7VzJEKny73BQ8dj/q
	2jmw207GdiFHeexEd/tTVOm2lJA08ASPHJFm9zdE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78ed3098-389c64fb-be5d-4caf-8ff2-d9cf01ea6b0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d30303fa5e6236420a80b4f95547157bae4c5cf8f5539490806625ae7f31cefb
Date: Fri, 11 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647001284
