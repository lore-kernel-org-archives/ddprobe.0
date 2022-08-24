Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E3A7E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661325052;
	h=To:Subject:From:Message-Id:Date;
	bh=PNB42Ro19Cy/t0GKaUK0UA4y68kZsuHaDcgqXP4PXYw=;
	b=EW/zM2b+kG3t2vTWzuqykC6DCcW89BvATn6lQwScC+N7Ua76cEffstPp8trDl6wo
	ZaBvcDrjxxpyELx9kLfDLdHSlpOzAny4Fdfi7PepqNbkFN9mn3jWS/KToqegtk4cQ5X
	I1/kaQ3geF7PGeEHQQScx+k0kx/ivuPpMXEE4EME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661325052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNB42Ro19Cy/t0GKaUK0UA4y68kZsuHaDcgqXP4PXYw=;
	b=SOjYJawH4fyKoM8GgTIKLnCA7VYh0ZV0AvJzKlyRIra2oUJv/Tb/vI4X6XyFKs9Q
	v9+tNgCmA6YFvUwXKQ22bRC1o2hcYiqeTfv6EPjHGc/xVfIfAZhzsUo/VDhp8OsgAJa
	YGFONBiD5W0e64iEF7Kj7nM2sKgBlQjeUky3sdxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ceb08a6e-2eed61b5-a7cc-426a-b1d3-7f718c59c4b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d232a78bb35e35c435ca1efc1155fa0cd5df1f5fdebea5710ab03ab43e0b4a1
Date: Wed, 24 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661325052
