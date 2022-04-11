Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9641849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 13:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649685238;
	h=To:Subject:From:Message-Id:Date;
	bh=jFoEZyrJAI7i9Adb/B0AdAE0oxrv2gM6Pdcz7lL7oMo=;
	b=hCwor5A7hB1a7fQikgb4lyo1LfgxVT933AcrLPNnZUbkPngKrYUc/MxUne3aZdEE
	HAZi0wcIXjkXBvdaxWak6ybrAAZZ709qHMZxS4GqidksnuRkIuNrZhr21ivxO3MKp51
	wIasFq2W8A6t28lY8E+enOjIeqX3a6CCxqbiCMLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649685238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jFoEZyrJAI7i9Adb/B0AdAE0oxrv2gM6Pdcz7lL7oMo=;
	b=gIOZLuqCNsvu/X5BZksLNRwXpg0ky9ii2vRgS6hZ8MvOV4AS2kP/ptikdDUatWms
	A0N6Wobukiy80sU4oGXTHiV3lkEOpDvfJJAZKYtZoeRL7kK/tsljin8XudSWl+egwsI
	JFCGdb8poPbvfJShdfH678+vRDFftnyOh923ebp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018018e71235-3e8a9dba-e24b-4b5f-bc3a-ff40d35dff2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b29a1fd675e1317ed06c14ae6d7f8e2183d27d24679ad593bbbad0d7d750922d
Date: Mon, 11 Apr 2022 13:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649685238
