Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078FBB645
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9VlVtjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8033FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704044296;
	bh=4OrUNbKi+Rn4ruRW4Q3tlALhswZP19/C/Xv5/d64xD8=;
	h=To:Subject:From:Date:From;
	b=Z9VlVtjymZOA8CkkyDlBBZzIQVqOXHSewcuJsp0VYrhdBvr3sjTNJNG3HKSuSNk9N
	 /ABmCPr+9vHj+ShT2b/v17C+yS+VDXI0sWDCutPm6CRQ17H+VgehyP4n+TPomqMuiD
	 TpOJTAOdE2XAbJAp9j9UJEnnfYNep3p6VVlvHHbIuKGI+b5SD1VgMN4eHl5WEMhZ5c
	 SX9Kn/gi7wn/ASzXOJrDUplPd7rC0Fj4MT7AvxVFmzEdNKeu65abZwG8XzKIOyTBgl
	 VCBUA8lmYmmgxWqaOcteJELvUB05TCRV24zvngsgq1I8pt/AmHEh2sGjQBUu0rqLh7
	 z7RmLtvySjhsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE63C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170404429638.26984.131678733770355629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124dd7c1218505fc76a6c55b4f647cb6f219efbf5d3f6fa5ef70a7d0bc087dd7
Date: Sun, 31 Dec 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704044296
