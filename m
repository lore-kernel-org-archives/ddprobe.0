Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AE12CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660239052;
	h=To:Subject:From:Message-Id:Date;
	bh=sxgupAf4pyvXkdVYLZaCzTR3v6n7DXu+ik2AcrvlTkM=;
	b=AlgQ6QN2cmr2c/W45m4YH27Tf2Fju99epSRQRjhqXLvdwi7X+khgsGBcM+qABsZs
	9Y8s+DIQsEiopF4o2/GtvrmstaM6fgPz3oyC+VRpKTdOnoyNvS9BnAQVVqR9zMtAftS
	WaKG2zELdlMUBRHpd7pv/+9wqE1Qmutz8u3PtReg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660239052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sxgupAf4pyvXkdVYLZaCzTR3v6n7DXu+ik2AcrvlTkM=;
	b=ctdLrXpQzdZmS4CwtO1t6wMnfM9Hq4WMuHTmyVAJOSeSETSZ1OOy6GaYxTvdE/1T
	Ekt83sfjnzDOnjbNktt2zHamIdXEk9DLIfiHmg/za9dRVAfbfZ3ywReSk7yccJbugz/
	9f+oogJ/h3nzUDW6sBrr0sEkvEpqff+gZBRyU8SA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828df57f40-dd54fdb2-c2bd-4f91-b857-c993b0454af3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41c2499a2e29b7859ebce44360296d30d3f7e724fe8edd31b63530a1bfb23401
Date: Thu, 11 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660239052
