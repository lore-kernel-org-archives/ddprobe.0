Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5CCA4C6E
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647561384;
	h=To:Subject:From:Message-Id:Date;
	bh=EvqqI5mQzOLH2ac5H1zSn8LHQgTw+JkK9cXZdHgG9tk=;
	b=mVBqW4uT7CUfVPzOyz56dXtlv73g+MiPM77WI+m1cbGWZ5OXiH/AVehDuQkNasGW
	CWq5/DYHMjArcMIwS+iZH7GE/Lo/MtGzt4LjyX8V11hWGK3aXe//EQlLDzP72L/rwVM
	zc0DeRVFAa1UazEVycNcOngtIrLI960OMwbU1kO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647561384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EvqqI5mQzOLH2ac5H1zSn8LHQgTw+JkK9cXZdHgG9tk=;
	b=dUorCoXiOpSSDhkoUP24DRUZJsJkx/9sXfxkw6w5ryje4OaCsjEnyArlSAji7isD
	VA2K9opGaAjf6GWpZ4S8mL8C1JZu9NJ+LuAPnZPLXRJ3K1I1WQL5qH/vAdPZke+5pzc
	WoYMRKMNobeUz8GrKYIV79tN2+B3UGfZB0mHIWyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a4fa31c-34fd61e3-a232-4b01-af88-8dd0ee0cbd6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf4f1298ec2508ff672b5c0cd5a43b4b6e1a04a30b2655c32f8bbf8f23166f88
Date: Thu, 17 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647561384
