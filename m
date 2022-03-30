Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39DF7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 19:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648667098;
	h=To:Subject:From:Message-Id:Date;
	bh=2wyiZQ+bbYgbCjkkiUxFk1h2Q1bXdht8EkTosut0JK0=;
	b=SSskDrn/5k//yhTnr5nlMpT362oSmPx+6KgpK5ScpmTyyUeNP8J/4ZLh3/M/qK0M
	ZXWh6j2VoLK8yWtqFUT7FxITtqeHZzvq3aKq6FmN+JLKORJT9qhdF5vbGmNJFP67xBk
	smnZwXVIjobYO8OIMFoCc6g46+GNHt62cf2K6wGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648667098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2wyiZQ+bbYgbCjkkiUxFk1h2Q1bXdht8EkTosut0JK0=;
	b=MuvoF4bfYHco4KvEb+flFNs213mK7E0orrM2h+qkzz5fed4AIuXJFeAwL7rj7Pb9
	eHnv/yyS5ou9J/NKF+ckU6MvvCROoqbCRRI3/9mh351UXdRo/yHMIqfjKN7/o7ufD1I
	nDTaPoUvngv5tV4Xiz4Gs2Jwx6N5oAglUhgdOAR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdc377c8d-1b6a056d-f91d-4996-9bd1-8aabb58a65bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f623d742202efd0508eb85a799ba2658586bb117e58f11c2148ef52ac41f0f0
Date: Wed, 30 Mar 2022 19:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648667098
