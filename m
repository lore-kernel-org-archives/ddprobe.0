Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1832E28E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657706812;
	h=To:Subject:From:Message-Id:Date;
	bh=ktQxoiz7CL9dVF2XAMq9kJrPna/QzTo2G/Rbo/T7BFY=;
	b=H6v5cdhghijfKsMfg8Cnr7HNeEKL7UmZ9tdN10JckAvaY+XzSAfkQe2aveeN64O2
	MN1qrZIaa3ym/nY+IF4M7YlqyCnCJeSpNl8No+nXNcsy3VsUVUnpWNsSDqlp9IqbtJy
	B2YVDJJVO78qHLGqfmLdjC7ycn/wcoZt+cdAF8YQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657706812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ktQxoiz7CL9dVF2XAMq9kJrPna/QzTo2G/Rbo/T7BFY=;
	b=BPK9AdF1WkON+XPph5N8/n7dgRqXsbdPWPxEdGWn3uNfnnjdfyuQrczH32tQo6Ff
	oVmFfEmiAcJt8XVDTWoCK1zFTRP/RwAo4iSqz/75a7RvhjOBy6YGuY02IWnE7QuLbeg
	BeK/z3Megg5T7KnI7FbbNV+eVcLlAVj+1MFdQ5yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7069375-0d62b109-6ed9-497a-b827-45e31cd4c436-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae491297426e625fa06909fc3e2f118bb35bb127efdfea9382f490c09e500ad7
Date: Wed, 13 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657706812
