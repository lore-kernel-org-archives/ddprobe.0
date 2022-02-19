Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92A95383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645272985;
	h=To:Subject:From:Message-Id:Date;
	bh=OAMo1zFRqn5MGB1LytcbwGkJuBk/SnSCKPRu5Zsi858=;
	b=dBY3J4T0yt89NuOSM2lFfa+S8ueLU0a0R92HKzXS41AYczfotEwlVC0hb7AkRica
	w0UkHpqzRcEv0A4YkDHpUewwRqknAyjF8VCPJ7ymq/iE6d3BZ+On4n/Zd0obXx5u1qA
	oIoGvS3yT977ODH8PjhmHzMlFpXGIXx6q/uFPpDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645272985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OAMo1zFRqn5MGB1LytcbwGkJuBk/SnSCKPRu5Zsi858=;
	b=K9mahzyWkL1210upOyVFgD+EMgf98xKJuyOC4tQD59nexb5bAjKGw33dY4Vu4yJO
	dewcqSFwzONJveeH55jwa7LCcb4zWqltq9YPX6cbPD+klDmXuFgpI5lx+/P6RA3H4wW
	gjsq/XIIBkWTsRhJvQqoJxEyUDpkjhrcUZoOXqZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11e96cdf-6b4445df-60a8-4204-8c67-8cd0f51972d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea9a23c8f48fb54e3ecfe006c154ac125769728c52455ba4c99ffd82a9eac76
Date: Sat, 19 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645272984
