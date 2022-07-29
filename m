Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD44B3D6E
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659138653;
	h=To:Subject:From:Message-Id:Date;
	bh=uUqv4mJKKhPIw63TNXfUL+2/eIBHMlqosCKjef25YW8=;
	b=CSJCgzBgSDjvDYkel/tZJHjlMeiwC7/ZBfU5Z8wtzsQEfYcT2NOkkzbaz0GCUfbD
	gpEubS4vs2fpyYL0cCMAN9G+i+5PT0ZJ8Es9K16HNms1wpnvHhSMHPiDRoRt0Rd4OFv
	UNTafs4hSFDUxbWAVlo8IWzD1Q7Ul154BoMpQmOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659138653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUqv4mJKKhPIw63TNXfUL+2/eIBHMlqosCKjef25YW8=;
	b=aSCUh+LAho68xC3Z33VpKJCj4j+CQoTQhjWPzymW9j31GQJzm0j0r1AzCeKLRJPj
	nJwBN0UGyDVbNZRAnnrUhZVrlobc0zwhB8LxrCxm1F2+bTuMcAjnxKsJKk6W1cVDWKR
	5+kB2tdfQwUlf9VnmTSFSqXOSimvDQ0ayIW78+h8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824c5eb9bf-c9a33b4f-e73a-44b8-a9b4-e1b5b8df6d90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c10a65bc81156abba272a966e777d22a65cd7e051a258dddf10772b04384a517
Date: Fri, 29 Jul 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659138652
