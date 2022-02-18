Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882E93211
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645190785;
	h=To:Subject:From:Message-Id:Date;
	bh=Vm/85oX3pvyOJqbzRP5UxdrshIay8O3IoiHVwzpjZ4E=;
	b=Nc+e9tKQJl+hNW4ofLwAVDr5QCxCkNsvAqghjkD1BpaPc/Npsj/1r2KcwOT3BCty
	OkzHN70cBgwHSQ73uB/cHcMKnW8WKvywoWVahTkivsTLWIWJZVYnIZpB5ECeSNLRruc
	vMtPVeFL3PRY8+sttx8nFX3TIVIAuIuq1aYODW2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645190785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vm/85oX3pvyOJqbzRP5UxdrshIay8O3IoiHVwzpjZ4E=;
	b=LYGw4I1X+tVmQ3+fJjiwcF/3oUSWJE3gRKfvAsDtC5jiNYLAxZbo3ld0fJ+JMnB8
	kyhFMrxMwEmqdIDIxVNQW2en6sxk9t6LFAGiwJGvv1pDXmsoTwVjuLA8SE4cp9Hwp3m
	4Kg0rdNucAoBZJNUnFsKzNHiO1YNNaeD5jfYv53s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d0326e1-67520722-a716-4f6a-a374-85eee028023b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b53205eaae72ef82fef213baedccb445aa6e11555be8ab3985dab63db208fe4c
Date: Fri, 18 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645190784
