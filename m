Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0A94429
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656817012;
	h=To:Subject:From:Message-Id:Date;
	bh=iWljUACSFfZN7wgz9pZ7vU9RFeOeMJHo00Pg/TCP14o=;
	b=exxzr6+PE3TLo+WY5Ydqcd6pfeCXbuDJ89GRXZed+hARs+3pDrNMzlpsFyjEltnC
	aJ/slSEf0u2LecFR7TINv866991cf/M+6Zq/5KKh72ASBkHTrvrJ4eKgRff4phpwFqy
	RBLYhT8L3GBL052FSFXg3SpM8UWIf4sBx+x+/uIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656817012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iWljUACSFfZN7wgz9pZ7vU9RFeOeMJHo00Pg/TCP14o=;
	b=WI3+5sIh+SaIkiPakZgd9IH022Ocl+57qh8b7avbnEaSC9koayYpqcv1L5jeyuvU
	g5NJuD4EPWljVQEwkRP01xkipcEM8QT5wyB0jysEyeLhqfbSAd0ulFsG7h9AsZaddsU
	8BcsZ1MmMKKHhYqKpl1qjzTkhOdikgPlhePAeUD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1fd4e7a-e4e499a9-ff1e-4763-916d-ab88941ed0ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de76ef3deff1b67ee9af0a9c757c078ff67a7cf67b2cc31e561ed1e6d23d252c
Date: Sun, 3 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656817012
