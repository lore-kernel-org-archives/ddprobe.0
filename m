Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1B87B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654683839;
	h=To:Subject:From:Message-Id:Date;
	bh=Kun9Vni7g4WHodKHdOybIJDxqTDvaBjxaZBbyzCYqPg=;
	b=A/rE9hxv96wzXjz7v4X+5cnt85KvqpK+T9zMuv21M0n9klu+0GA0wrBI6lWRKiAa
	qvsUjBEw918B4zoRT6SPhv3nngIlcMZhnGBoEgVw9l+rz2qVHMhHf+mwCHfa7Hr1eCs
	9Ngn5SB/OAEws9UGxbeHNMnFK0WbNYz/Y+JxNeHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654683839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kun9Vni7g4WHodKHdOybIJDxqTDvaBjxaZBbyzCYqPg=;
	b=TOut2YQhswNgmgSR1TBuvsqyOp5NZJYBdXABOj2BmcHr7bxZbLUaiuCeJhbBJEFk
	zd35NBf2GqKoxRJ2wlEz7co40z5sWz5mmtcXFXnuen4WmAO8zaLXrEfj+m3W1Ac+wg9
	O9E9cei1Dj6e29dpihYd4JZi6ziWVWUWualjcI9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142d7ab4b-bb576d92-4540-4f45-8cf7-4c6d1b814b24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c68f5c2dbc721ca35e4085352a47102aeb015dcf5ce09e570c70f54149df31
Date: Wed, 8 Jun 2022 10:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654683839
