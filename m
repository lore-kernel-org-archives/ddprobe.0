Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FD47483
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 19:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655840159;
	h=To:Subject:From:Message-Id:Date;
	bh=amJcp/dnK+5saAleSEseeNj6ekYSCxokihzu/cPhuF0=;
	b=BNeQ5hwHT6hbaM5/kl8A0FFWqQpdx1TYhbIfqtXc6CHl9tJ3O1QSSknQeVSGkiSc
	30q9QMVx5GjoBA/hKQeYASwiJYidCtcXYt1b3INPNAG2UAb3Id1nvz5CNM8OkIJNH31
	zAIaF7sQ8MEaxnrVFhrRUWNkePpfhaCRRtpr/Q+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655840159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=amJcp/dnK+5saAleSEseeNj6ekYSCxokihzu/cPhuF0=;
	b=SJCCoGa0huWhxR5ldlhUjLQky75Wwqbv34Mo3SRBReHLotcA8QMmi0g9QMHdnfxB
	q6ixtFRokfSG5IkydxylCNJuHoDu1hiD0Ebe5d3rBHVqfjJjJx3MFqqvCaYANpjV6tl
	HzDnUv+Ly8bYd9i7C8lmdRyTeBpHdqN8Z3B1E13M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018187c3b602-d0db1184-a372-40c2-8323-8919552adb19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d036c916d59c9b196b943ed26c17e6d4727fd111fbfbbb1f9161492981459100
Date: Tue, 21 Jun 2022 19:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655840159
