Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E9E7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 13:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654866239;
	h=To:Subject:From:Message-Id:Date;
	bh=+ltaPzT9+1pg+pgb1mRRBTaxMcjO/efI8N2QD/f7+Bk=;
	b=TNDZvKFGa0jS75QN9gIKM96Ro8DwXu6k9Qku+578uRuW/gnXG34RaIRIdVVORrJX
	Qf438AVQNH+gZmLLC4mDRmEWlh3dRRLC6+HxZJ7/YHmse89QqlDPnoq562yy8be11H5
	tbfQBNE9jpOE94rFQSkFpWtC6yyTlWtQisalpnmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654866239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ltaPzT9+1pg+pgb1mRRBTaxMcjO/efI8N2QD/f7+Bk=;
	b=KZ52M7sH5a4ujMIlGYtYYi7gfuOjyKuMHlLcXZLa36RRszqGR/7KMZ1JLYJF2sTB
	3dvka4uEL/q/aU4UT9zMsnKHzsvwcNpCRWQ1oaFygwTVsrSgWt+s2uw8MiHvHdRLxwz
	xIDURDLEC8Cup0mZkGg0lrj3kA3st/ZiC3XyQW2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814db6df0c-821f6d27-319c-4bd4-997b-54b4e504389c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 159f84c610cf155801a7c621905e3e347e21c8d954d7def613a9cd765c7373d8
Date: Fri, 10 Jun 2022 13:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654866239
