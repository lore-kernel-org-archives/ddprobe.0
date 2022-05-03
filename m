Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437F333CA
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 20:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651608778;
	h=To:Subject:From:Message-Id:Date;
	bh=cZ/g6c19E8PTtWz9XpHzceFvKQ3ZNbK8kEIdQvDKOvY=;
	b=g6zrKdjRknRQkaRPhoq9bOKaYXQZJjpTKJ/JDjqlzaz+MrHwhetwLBFxiTxFrvz+
	lEDXCSuMZvgSAVusbhPpMb/eWGULV1F8hSu/iYzKQZ8FqPUCCp40pYXp0KviUrZSLE9
	/w9LBpDBX0nd6XVtJcwed3VhiQJXtdYipQf1Lm4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651608778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cZ/g6c19E8PTtWz9XpHzceFvKQ3ZNbK8kEIdQvDKOvY=;
	b=ZwcGyM16I+8SaEF30rO9Fsx3+m+qzx2qT/ECIBTBpdDKBjYv7422QZFN0LG/NQG0
	4e7HoOpnOqeQlBykQT812MYpMYm/yxAzFiwV/ZJ42BWMJkblrpQah9q1DScmZ7npWXp
	3xfliP77CH+jSgoawGSmr2OvW4NLf/MJbj9dwNqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808b8df631-e69a5f7b-775b-446c-9bee-737bd7776b8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18710506737d45412a45ec62c5af531812cc445fcf9b2ed5ea16c99a8ca17629
Date: Tue, 3 May 2022 20:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651608778
