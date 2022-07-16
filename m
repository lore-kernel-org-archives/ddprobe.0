Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EAB1840
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657994212;
	h=To:Subject:From:Message-Id:Date;
	bh=pK8eQAC4ETNKgxqHQcNY2T8ax4sLgdCWMR7+w9FfNb8=;
	b=Q6ZKnlBDVbkCNzl8krwB4pZoOuPt0ba+oMhZEHXj1XTdEFfs0dX9Ze04qgSWmEZt
	Y+y0p7qzP1CtPe+yoovxeXUcMOu8NIiHisvjs/xox5vYk2SwDFX8/Iwp/hSXeh4a0Q6
	+vD6jp5h773GWtH+/WkKFYXdSSlY1ANkgVRRGG9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657994212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pK8eQAC4ETNKgxqHQcNY2T8ax4sLgdCWMR7+w9FfNb8=;
	b=Ym2PubDyWdKpjqEhy4o5PzOPDP4sl4DVGotHdcWcR5Dg/TsY9YKeUOtJUUdjvdlF
	L9zNozMLwKdXnLYnlbvhyMAMJlXwYpMy3QcVb8DFrnckuMPMGWZwKZzIIa+EtNyq/vv
	gXpYQ59qriIuvxVZpincJ8sKlj759ilwIILoMUaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820827f400-7ac64cf6-5318-4be3-a18b-dc747cf3e6c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2eee5ffc7ab82b6698f90191091202382f0672928cf07482d4be25901a1c181
Date: Sat, 16 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657994212
