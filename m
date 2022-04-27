Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684B27E1
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 12:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651063918;
	h=To:Subject:From:Message-Id:Date;
	bh=rMHQpVXW/b9lU819hvE82syW/kA1RaP/Zi2qH6436BA=;
	b=YQ3LJEg3WSDV27rG4Y8xqyoLgLO0h7wSnqqOqxYD0MJm2XDQGL4RynPnfrPgtUua
	mWYfnbWeeHJFkLE1OvuLAvSt/jlPvcrZOixQ5xSaASeLh1rzdFgglhfXTWG2eM24H/8
	KM0umlYRwpi79pn7aoqgRFtJhKHSoYX7Zlrz4nng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651063918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rMHQpVXW/b9lU819hvE82syW/kA1RaP/Zi2qH6436BA=;
	b=NQXXwqWNnCGb/y3KmaVjphDU0aftm3rnbKUTvz75Ek286ovRRysMG4O/oDS5gTzn
	fFP5UchYP7a4UDKsB2Kizstd/a1wUb9yIGklRi77ZUu0HY84q6rfIWtb9Hce+1YGNxg
	qRNO+ytL7zAC96XFRzTXb1oQ01TG0qHjRANHHkiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b140ea4-0a805fb9-1cae-4507-9586-1194fb2e0a53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7ff2cb71924ffcfa71483a380e555ad04f45ff01e6b0bae0020fb54f9dd125d
Date: Wed, 27 Apr 2022 12:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651063918
