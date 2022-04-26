Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB467E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 13:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650980878;
	h=To:Subject:From:Message-Id:Date;
	bh=Qz2IHwiHCt5gHqAHGp0xOYltvVFbghTN7PwHrkw1ZI4=;
	b=BLvrTBH2jBnF3DXkyF639w+ceaVDE47VC04lPxJCZI3HMOYLip4euM6Ng7BsLFNd
	SRGhiepmqZ8vOH0K+I3IdQ3P+ZJXHKTqVywBbYD/CACNBDUoitqqPxGZnJ4ckxnHovq
	2wscxUIYFvRGLHCsx8j899F5DbdJyuPY1Jk0r+EU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650980878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qz2IHwiHCt5gHqAHGp0xOYltvVFbghTN7PwHrkw1ZI4=;
	b=A/SoRUCAGO6O/j0+7GmwKIOuffzotMIryox2sZERx8+9sD5SWpnkseM+94Bd5ngJ
	WmlNsQ+4R/p82YmqWqgXx46FzVtBFwT9p0Xg5ObPLNgKW626jWNpql65R0BBg5CjPL2
	BhS0axBUscuMI0KKvsJuixkRFTI0ybbqm+MnuvBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806620f7a2-41b3b19e-8572-48cc-b2cb-ba751ba10865-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 609bb2a51fdd295bef696412a17a01d3d2a00a3c842c32e20120d6e485152c36
Date: Tue, 26 Apr 2022 13:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650980878
