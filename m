Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433FF23AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656778012;
	h=To:Subject:From:Message-Id:Date;
	bh=+oH98sEAtbhqegVO8aGvZHRIsZ+i9EXHOpaV0gDMwng=;
	b=PdXQnck65CFUz07Dz74gPK2gIcyqMm77ICj5bkeEBC739Ll5UlqgVNicKOrlxjFG
	6VJD4AZpgfyo8hrGYXwx+cUsjISjAeh6Qez2OIFjLw+VF3gdI2VcRwTevpiXx2eo+D8
	gX0FyZwyQj3x3a0eFGDIaBtQcOXz+76LmX8BscnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656778012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+oH98sEAtbhqegVO8aGvZHRIsZ+i9EXHOpaV0gDMwng=;
	b=ZTrGtuV8/ZBtVWzeK2ok+bfpEZRWCNte/09Y2I1KAcpAcg61WNbCt0MHFnBLTiD8
	7J7Ls1GU+vnJHNsv14sWZxxen8P+JcTzxVMU8PfsmPiogNFqmFWXMLrw3ZVgja2nGXn
	xwFJ94e1IW/vaC5t4dpYzF3NI8gzpswqK8u2Ptgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bfaa3697-91ac7379-e6f8-40de-9597-d36c6b56f3b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc64b933cc2b68e6022d34f71b6a8d49c9b73a8358629dcba3ff6438cf6e6525
Date: Sat, 2 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656778012
