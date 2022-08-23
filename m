Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5487F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661293852;
	h=To:Subject:From:Message-Id:Date;
	bh=w87dfu78vL+7730jYsLZ3Fi/4Rz8sK0SITWkftCwPKc=;
	b=eWNS4CHM+1VnJsEkChSTe1R0kF0k4Gj2RUDwf3I/BgewH5g8MWtJvFKIda9zXQDm
	OSab+g5QBt4aFLvSEpOwwFwusSST5ZPZwsq4+hGEqHN0eNM84ct6l4nVJzhHXjBJUV3
	/bvgJpxhDN8r6G0TOxbRqC58H+H1FmYfPKI9NI8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661293852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w87dfu78vL+7730jYsLZ3Fi/4Rz8sK0SITWkftCwPKc=;
	b=NnsTQai7auKlI3xVBARSYoFQaOOK3fltvNeQ57wM4VgDW/gn4/4LX8f1wvTO6YkB
	b8n62r8s8vP0d1lv5KnIbwt6F7H3KcGJa77WIzedgLh7vkaf28hC7ONCnPQxuKdhv4M
	l1afJIZ0iFkRDUcboqsS3gv1kill37Ti58a2gIcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ccd4778c-c717adbe-a773-4f00-8bef-6731c685c8c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a260996fe48f039e1b79df25762eeb5b857ebcfb77f4c272d6d1f380b2afb9d4
Date: Tue, 23 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661293852
