Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1096F3D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 18:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648320658;
	h=To:Subject:From:Message-Id:Date;
	bh=OADac1EuddQGdR9x2j7zt++1sheJBAMtChd1dUUcK2U=;
	b=XsgOBOr7YrSQ5doBEw5sYIcUv6LfHMlE2hJZFBY/IuXbgeZrzJ8nP9a6R5qABKqO
	n2TRrALXBYacvQooYRnF8XDC9qWHRpgb2vmo/2vPxzDJiXdVZQJrqcCFWu5myUK0+w+
	QGAdpsIYxHCuRdiOiXm1r1GLRaOcB+RNt2BI/b1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648320658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OADac1EuddQGdR9x2j7zt++1sheJBAMtChd1dUUcK2U=;
	b=D94P1K7045YsmsNbmY3NCYh7gN4EJbzKeAMrH1S+L0XbZLmzGL/OMAQiD5ee7aeR
	a3g9D6KemXHmANXixc6BV1tgxBCeAxVsRXN+wocYrSGIK/50Dax5TDtDWWW9G2CFmaC
	nhBTDtBdj0HkSJeuU6zB5JDufFKdCxl7i3DazHX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7913b55-8ee32817-6b37-4e23-a7af-da3ca029cc04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91e970af8ffb2326a7809e618428401f203b457e7841dea1fcd5e017ed2af2fe
Date: Sat, 26 Mar 2022 18:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648320658
