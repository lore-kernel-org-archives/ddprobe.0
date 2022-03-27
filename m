Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B5E3D79
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 16:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648397698;
	h=To:Subject:From:Message-Id:Date;
	bh=it795wvN50xPjXDoUmgjxXoQmBd6zETQ3M3NHxSB+Lg=;
	b=EBYUZqUZTNdoI20ARC4ozodBwopKeltw946DAodYesGDOPZuwYm6osNHQ+FIt90Y
	pcUCzrbkNLkgI4A4ydy6hJYi22HjJvmxbqpNu8KEtpJRInogJBxUNEgnL5RLfFPTPI6
	qHHSjaJxyhheUslrCWdFG9DuPL/wvPTZrTrwB2ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648397698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=it795wvN50xPjXDoUmgjxXoQmBd6zETQ3M3NHxSB+Lg=;
	b=I7ncAf7FB9QLQ7dKXlBi+4r9/BIfbzJNbwZyxw4rRckfwcOTyJXK+dslIgugFYCW
	ctzpUX18r11PIRYvcqnRKQS40Q/j/Fjc8i9i0a/+orDJoDDNPHskw0NyMfigeC8WRfj
	DugsrOyZBSrNl7qm194OMVZtSBiD6cK8/9mYClNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc28c50a-1fff28bc-c9f6-421a-b129-a273c63f1f1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cae7dc9db49a08f907cf8f553e57c9e886df487c59782309b0c480e21137bd84
Date: Sun, 27 Mar 2022 16:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648397698
