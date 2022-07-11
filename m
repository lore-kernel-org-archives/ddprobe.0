Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126E31FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657517812;
	h=To:Subject:From:Message-Id:Date;
	bh=LrHKn5qxd2GQ2FBjSd6G+DaI8lBu/t8m10V57b6Og64=;
	b=OSwUUkdpqa9D9UyyuGXE69SSrX/3S9u60Sgbmx844facw6TDwmZj365bfq3rkbFs
	ZtGUdk1p8qAULOgBSN3TnDX9KBvARz8mcYqA6ajrg0YhIIaSzrsFMIYgz3fxSpFLszt
	3Tj+HP0h/v6kPkvE9+7gmEPI/+2/H0lLdlhZyG0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657517812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LrHKn5qxd2GQ2FBjSd6G+DaI8lBu/t8m10V57b6Og64=;
	b=FsHP4/bq5VOPkD0dPEBacsXDRc+6+GUxoUY9UreO7oNj4H98HdmhrRDYtaVCHEjP
	bImP10EiVAN7BUUmZzOGfMQ6tsSALgvAxtwAq1HPQ76wlCxLOoFDpZNVOKZ9vdtD6zK
	5Xtkk2FHqOrGptnTWwhdvll/a5QmxVg2/dJjDdlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebc2aa48-f8c6adf1-4721-4bea-8d55-7a873add21e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 529e7b9a3bd89e9006bac379b77ad141fca26136d2ec716dc51825433132f3ef
Date: Mon, 11 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657517812
