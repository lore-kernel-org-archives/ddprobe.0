Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899587C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 20:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648500718;
	h=To:Subject:From:Message-Id:Date;
	bh=3a5sjjxhUa5CqsCzTh5AW4U3+HkjfkvHl0cPOWqU4S0=;
	b=NwqL7Ceaas0KNvj1/wNxfjRehX73lHXV8GbJllTkIkbCCNyebJ0IedZB7U7kkYCx
	eq939QyE/Fn9EOAxvXH1dGZzYEgnkvc6wZjYDXmHWHay84D7jaP42+XmIuOsB70Gzw6
	rxmyROoOKy8+/al+FKcz8yJRjEyc5hQFRSuvThBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648500718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3a5sjjxhUa5CqsCzTh5AW4U3+HkjfkvHl0cPOWqU4S0=;
	b=XSwvuZ+rjfr6puz3Uk9y4I0hTWxhK6mpzKW8JrLG4LXKSTPEKO0OIZN1s7oK5M3y
	125vUfT3bfJjf7/MszRvxC/bRl1Y3eDR/x6jlK1m5/pRdCQxDblagu2saoVeY07i6cA
	kueUXTrX0y48xbzuqQOrNBNqlBgSTBAXkOklk/r4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd24cbacd-8b5c3e35-5215-4a2a-a11f-3754784f63d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9631a4dad53d813bb3aae6084aedc3e7d752a2957b56526002445b73c969ee3
Date: Mon, 28 Mar 2022 20:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648500718
