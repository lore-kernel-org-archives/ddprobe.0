Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2581F7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 06:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649484478;
	h=To:Subject:From:Message-Id:Date;
	bh=e/aPr5/OXno3SrRgLZnRX5QSkLgJi4BDpPru32ItFxE=;
	b=LnFgE7DtOx4cAP9dkWDNDIABnACkHcCvu1R3zevUH6RmPAknPsP5BITheToKdlCP
	KirdlPmWbBWoeheaB4q6jVcQB4kGhIw2ejq/jrVJN5hbqUgrg6x3ZmKSehsRA4TxYkb
	8OqAQL/36R9pQ5TBpaC5GTVS3fQkMUcwtmhv43/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649484478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e/aPr5/OXno3SrRgLZnRX5QSkLgJi4BDpPru32ItFxE=;
	b=GRrNMfouZvtx/4869cKWnbEuc1AcZTqX7LZGa0lOOdVccbTul2XpcV0lSmT34PtG
	kHAFufC5rXY+JJgZA60e4WzZ5yg2G5yCMRFfiiDVJJjCWlioMqJNjjhpD6scEoZ9cJh
	rzGk/YBrFMVx1K02FEwnXnCT+YMQ0GiEt44dNBDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800cefb743-57de1f05-7d37-43be-b78d-a1330b22a22c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e509ca707f122ad91df4ca87a208dca5e3dd586a939dd55c4009af9404a814
Date: Sat, 9 Apr 2022 06:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649484478
