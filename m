Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F262A366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660302652;
	h=To:Subject:From:Message-Id:Date;
	bh=ikTYb3T/xol3RSv5Tv4lTreK1WKNq4XEqYN82ErHXgU=;
	b=QbJnzIX1+cY6IbPpKaQ23N6nVVb9hFSbg1KDXUCjCBTmLeP/vMnybO9/uyQma+U4
	AZQp6iqpJThuf6RMrOQH17VfM+SgYXdgt1Haf+vo0NhlgGk2JIzbB9khy39ZFpB4505
	DYZk146wlG5/Fzy6leq/O2bEwzJ36oEy04zVv/uw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660302652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ikTYb3T/xol3RSv5Tv4lTreK1WKNq4XEqYN82ErHXgU=;
	b=c6zWsN3EEFwcLtPufC0D7koNDBOLljnljglGf2UGsPvevVFfL8H00NWuxQ7whBff
	HvsD9hbM5sevJQ8gLF+PbT2ZAAoBawDTse/URBRDOgSecueFENWP9GpkD5exHOizftl
	9TlTT6jMiycAectdygoPdRpZCFwIPswcArxVNoeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291bff4bc-80c61e35-fd17-4204-b3ee-57cbe1b57143-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61b7c2949ca97f2bf51dd9bfa94e5f42b1e0240e49e5c1026f13d64abb908afa
Date: Fri, 12 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660302652
