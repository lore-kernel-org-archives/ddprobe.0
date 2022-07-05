Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146546031
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657063012;
	h=To:Subject:From:Message-Id:Date;
	bh=YUaxFqbeP7SkKI0L5D8KTRcwsy/Qmd96K3XQnwB33/Y=;
	b=Xt8ei70nG/Es/12ZWyQezj43faRc49gfeoOmDSsZyXQJMN0F9KyPtmI+0209omxd
	Pi5QSGnVgqn3Gmo2bOIOrzVz3O6MT2le9SCOWT8LZGTnoKlUBbvrh+3CSKceBmhcOjK
	tns5mXoI86GnjWEBN2A93lLTCbhSZpY3V/eoto9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657063012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YUaxFqbeP7SkKI0L5D8KTRcwsy/Qmd96K3XQnwB33/Y=;
	b=fQ5pgDKKAcgfx6FmMphkjhBAYw4nORBHU2BwXWqZVb8pri4Ruy6+GXNabMCfOSm8
	yHJMA21SLouJSvceoVen8QCdgUG5Y4jVYnu6Y2phrKNc7svw9Tdk+1smj/3W5ymQcS/
	lWzDvM1wi8fh87xs/AeLAU10xpYfazcqS0CJSr3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0a6f83c-b4ab7fab-6492-4916-9f5d-7054dc0051bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 864c0e72ac26b4b1d5083caae53b34635b0a33e215c4234cef9b7e547d4590f7
Date: Tue, 5 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657063012
