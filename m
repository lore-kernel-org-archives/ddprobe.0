Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81C8C323B
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660642253;
	h=To:Subject:From:Message-Id:Date;
	bh=cU2GyZP3c0buvEqE3/07T37B9PTTE3iA/VTCMI33SJ4=;
	b=VdXcnAy9iB2j9gN9ZOjvCxk/pes+sEmHi1P4laJ2dXGpz07WjwioaOnmjBsFcXAn
	cFIa2OqJcW0Bnl1FJwp3YR7kGooDtXp5BNAmiyQNQR2CFHqFQDYFvp4bordlRtKCfvs
	UwSV3sz0/s06EiYSQ0ukKlHBytuP0528uiw7dA7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660642253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cU2GyZP3c0buvEqE3/07T37B9PTTE3iA/VTCMI33SJ4=;
	b=Tm6M8CCRg8hIzHFKussFSeyfMGNw+zt35x7cL4P5w95nmwA3oarcKcl1C4ZqiIb4
	XtMJljK2n9g5TeiMV7t9qeIDmQ9WBGtFRUcXHCsX9HEQAyIShWQgKQdqCKWNzmBCBkH
	bRCmC3ocIU6P5MdQErXj+SUKRI72fHKbxoq7lAd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5fdd849-51d29311-ff07-45c6-b0f6-a49caf3aeff3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6f713292ea6f40c311cb72a96329b9a82398c7328ef70bc3e3c8721bb3f4919
Date: Tue, 16 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660642252
