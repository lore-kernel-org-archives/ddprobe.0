Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A432912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 21:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647378984;
	h=To:Subject:From:Message-Id:Date;
	bh=rt9/ALDNWCHZwheJa/VpR9pCrnXZswyaKx+XX4FDhbQ=;
	b=j5AsnIZLBOc06FJz/RqXJB7pazJAhwmk1hY2EAEv9IvTE71QvH8w0hBMia/POGVQ
	BUID40Jenpz6FwTiBfLxJZBzYhDz3sY/kjQu4x8y+EPNx5PNWhns8UuIbMbm2+mGshd
	Ff5Tws3uM9AabqwNEKvcbFWdwCZM7pWg3WzlZxsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647378984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rt9/ALDNWCHZwheJa/VpR9pCrnXZswyaKx+XX4FDhbQ=;
	b=KGUC6M5kI4dNLayDfdhq1CfUO8gDNY00fq1dBku9bmCllW8XRcsPlzxEiSarw46X
	+wI/39M5FWB24HloWhxQ/C9CWpzO3WC/CsuvH2JxXsjxhuwCRV0dZOi5SrgAYE91u7I
	tB6JsXEALO42kaMUIHDqtFkwct1RHevBmn4Y4S/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f706f20-db8286f3-9348-413b-9ef6-c5de2f003eb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf80f77ee9c2a83206a35e6294d3d8e7a2a3ee4473ee4ba6cdd7ff84eb372259
Date: Tue, 15 Mar 2022 21:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647378984
