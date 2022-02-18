Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC5228E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645142784;
	h=To:Subject:From:Message-Id:Date;
	bh=WjZrOyEFg2A2FxL8DF3emRy7+jagcmHMpLcVJW4JrSI=;
	b=Y1Y4dM02siVwNw0aNc8BbDz23x7ryzNtised2+ssWiSQPsEr1sOoVEj27TV3va0x
	/W7wXG9kQWbUUGEGcBeyN58vIGI5wEdyoDiIQOexOEtaqTCunw74bnIMkEMzj7UInON
	z0JLE0ar0mnGtBdVH/f/sl5koeakUhT6hZKgKJBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645142784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WjZrOyEFg2A2FxL8DF3emRy7+jagcmHMpLcVJW4JrSI=;
	b=gvriw2UTTUhtFHgkAMEkwQnkVJqwYvnPBKq08p1LAwMEYyHYMl5TUMVw6FUEE2Mc
	YoyK0XhN4fq+7y4Xcs09XKbWFnWDgie2a4hdbcAaPbAk7YQE5qcS0JprV9yAaKIw9tA
	fQoubaq5lIPMMS5/+E+uU5ngqxU7spQ+DcsftjyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a26bafa-829b3cb0-268b-46e5-bcf9-3dd39166f84d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9e0edcbea1ccd137b0a607e45b6697b5e0b38e67c872371e7ee0f0838bf63bb
Date: Fri, 18 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645142784
