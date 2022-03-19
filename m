Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752F9180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647691284;
	h=To:Subject:From:Message-Id:Date;
	bh=1jhSvlOaMUFOcbDDEhG1zwjaQdEiIXmuSq5VPyNkz+c=;
	b=kw7lszoQvx5Bya+YF+r+YN1cUuiGxlSvU+4JL9SlzK0JwQ9c7+imf/3NceOOxcSx
	ZwdZzxt2h8SdiO2srtejm2soj6k/ZtG6G8hvu71ExR06HkbeZcRps6ODVadzENDhkoo
	yPS6TPlvNSBFeVRpv9pSB3/h4fAleZA+6e7NsvKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647691284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1jhSvlOaMUFOcbDDEhG1zwjaQdEiIXmuSq5VPyNkz+c=;
	b=fPrPaWpBPQ0GtoWjykyFLfKEQGKQkMyYsTMoPDpS6+4rXziSjWBG9ncH8Q1WOeBB
	8j2qBEPzBWQOllj7p2A1hW4CnGIPmQurEhoM+pYbaQ1sxxf6s2+fsVhUQ3XHb0cflkj
	qRircFiZhaJRrvWnGiV02++jHNxhd82sZtk8f71E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa20dc10e-f0bb2a4f-97f0-418f-8000-0f7bc7daf067-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19e5abadd9e3bc1065e03de61dd700357514fa9d08d3acbebb08718a31add182
Date: Sat, 19 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647691284
